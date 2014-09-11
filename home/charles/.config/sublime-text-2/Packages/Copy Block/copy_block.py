from sublime import Region
from sublime_plugin import TextCommand
from collections import Iterable


class MyCommand(TextCommand):
    def set_cursor_to(self, pos):
        if not isinstance(pos, Iterable):
            pos = [pos]
        self.view.sel().clear()
        for p in pos:
            self.view.sel().add(Region(p, p))


class CutBlockCommand(MyCommand):
    def run(self, edit):
        self.view.run_command("expand_selection", {"to": "line"})
        self.view.run_command("cut")


class CopyBlockCommand(MyCommand):
    def run(self, edit):
        self.view.run_command("expand_selection", {"to": "line"})
        self.view.run_command("copy")
        # place the cursor at the beginning of the first line in the copied
        # region
        s = self.view.sel()[0]
        self.set_cursor_to(s.a)
