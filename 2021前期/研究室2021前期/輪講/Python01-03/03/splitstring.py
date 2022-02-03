from os import sep


class Csplit:
    """

        Split a string by separators

    """

    def __init__(self, *seps):
        """

            Set separators in the parameter *seps

        """
        self.separators = set(' ')  # Default separator
        if len(seps) > 0:  # The separator are given
            self.separators = set()
            for v in seps[0]:
                self.separators |= {v}

    def split(self, s):
        """

            Set the string s to be splitted
            Return the list of splitted substrings

        """
        self.words = []
        if len(s) > 0:
            spos = -1
            epos = 0
            while True:
                while not(s[epos] in self.separators):
                    epos += 1
                    if epos >= len(s):
                        break

                self.words.append(s[spos + 1:epos])
                spos = epos
                epos = spos+1
                if spos == len(s)-1:
                    self.words.append("")
                    break
                if spos >= len(s):
                    break

        self.nonempty_words = []
        for w in self.words:
            if w != "":
                self.nonempty_words.append(w)
        return self.nonempty_words

    def seek(self, pos):
        """

            Return the pos-th substring

        """
        if pos >= len(self.words):
            return ""
        else:
            return self.words[pos]

    def seek_nonempty(self, pos):
        """

        Return the pos-th non empty substring

        """
        if pos >= len(self.nonempty_words):
            return ""
        else:
            return self.nonempty_words[pos]
