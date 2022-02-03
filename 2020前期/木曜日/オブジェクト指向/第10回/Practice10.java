import java.io.BufferedWriter;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.*;

public class Practice10 {
    public static void main(String[] args) {

        List<Person> data = new ArrayList<>();
        try (Scanner sc = new Scanner(Files.newBufferedReader(Path.of("dummy-data.csv")))) {
            // 1行目は読み飛ばしたい
            sc.nextLine(); // 次をここで取得してしまうことで1行目の列情報が入った行を読み飛ばせるはず

            while (sc.hasNextLine()) {
                String line = sc.nextLine();
                // System.out.println(line);

                // データ1件分を生成
                Person p = new Person(line);
                // 出力条件に合致するものだけデータに追加
                if (p.seibetsu.equals("男") && p.ketsuekigata.equals("O")) {
                    data.add(p);
                }
            }
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }

        // データの並び替え
        Collections.sort(data, (Person o1, Person o2) -> {
            String o1name = o1.name1Kana + o1.name2Kana;
            String o2name = o2.name1Kana + o2.name2Kana;
                return o1name.compareTo(o2name);
        });
/*
        data.forEach((line) -> {
            System.out.println(line.getOutputLine());
        });
  */
        // テキストファイルの出力
        try (BufferedWriter bw = Files.newBufferedWriter(Path.of("output.csv"), Charset.defaultCharset())) {
            for (Person p : data) {
                bw.write(p.getOutputLine());
                bw.newLine();
            }
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }
}
