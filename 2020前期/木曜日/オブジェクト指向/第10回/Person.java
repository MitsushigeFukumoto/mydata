import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.ListIterator;

public class Person {
    // 姓(漢字)
    String name1Kanji;

    // 名(漢字)
    String name2Kanji;

    // 姓(かな)
    String name1Kana;

    // 名(かな)
    String name2Kana;

    // 性別
    String seibetsu;

    // 郵便番号
    String postalCode;

    // 住所前半
    String address1;

    // 住所後半
    String address2;

    // 電話番号
    String tel;

    // 血液型
    String ketsuekigata;

    // CSVの1行データを受け取って初期化
    public Person(String csvLine) {
        List<String> data = new ArrayList<>(Arrays.asList(csvLine.split(",", -1)));
        for (ListIterator<String> itr = data.listIterator(); itr.hasNext(); ) {
            int i = itr.nextIndex(); // リストのインデックスが0から順に取得できる
            String str = itr.next(); // リストからデータを順に取り出せる
            switch (i) {
                // 1行のデータを列に分割して、各フィールドへ設定
                case 0: this.name1Kanji = str; break;  // 姓(漢字)
                case 1: this.name2Kanji = str; break;  // 名(漢字)
                case 2: this.name1Kana = str; break;
                case 3: this.name2Kana = str; break;
                case 4: this.seibetsu = str; break;
                case 5: this.postalCode = str; break;
                case 6: this.address1 = str; break;
                case 7: this.address2 = str; break;
                case 8: this.tel = str; break;
                case 9: this.ketsuekigata = str; break;
                default: break;
            }
        }
    }

    // Personのインスタンスを出力形式で返す
    public String getOutputLine() {
        // 「姓名(漢字), 姓名(かな), 郵便番号, 住所」を1レコードとする
        return name1Kanji + name2Kanji + ","
                + name1Kana + name2Kana + ","
                + postalCode + ","
                + address1 + address2;
    }
}
