#!/bin/sh
mkdir -p Localization-Diff
printf "old tag: "
read old_tag
printf "new tag: "
read new_tag
git diff $old_tag $new_tag -- Tune/Resources/Strings/en.lproj/Localizable.strings > Localization-Diff/en.strings.diff
git diff $old_tag $new_tag -- Tune/Resources/Strings/id.lproj/Localizable.strings > Localization-Diff/id.strings.diff
git diff $old_tag $new_tag -- Tune/Resources/Strings/ja.lproj/Localizable.strings > Localization-Diff/ja.strings.diff
git diff $old_tag $new_tag -- Tune/Resources/Strings/ko.lproj/Localizable.strings > Localization-Diff/ko.strings.diff
git diff $old_tag $new_tag -- Tune/Resources/Strings/th.lproj/Localizable.strings > Localization-Diff/th.strings.diff
git diff $old_tag $new_tag -- Tune/Resources/Strings/zh-Hans.lproj/Localizable.strings > Localization-Diff/zh-Hans.strings.diff
git diff $old_tag $new_tag -- Tune/Resources/Strings/zh-Hant.lproj/Localizable.strings > Localization-Diff/zh-Hant.strings.diff
git diff $old_tag $new_tag -- Tune/Resources/Strings/en.lproj/Localizable.stringsdict > Localization-Diff/en.stringsdict.diff
git diff $old_tag $new_tag -- Tune/Resources/Strings/id.lproj/Localizable.stringsdict > Localization-Diff/id.stringsdict.diff
git diff $old_tag $new_tag -- Tune/Resources/Strings/ja.lproj/Localizable.stringsdict > Localization-Diff/ja.stringsdict.diff
git diff $old_tag $new_tag -- Tune/Resources/Strings/ko.lproj/Localizable.stringsdict > Localization-Diff/ko.stringsdict.diff
git diff $old_tag $new_tag -- Tune/Resources/Strings/th.lproj/Localizable.stringsdict > Localization-Diff/th.stringsdict.diff
git diff $old_tag $new_tag -- Tune/Resources/Strings/zh-Hans.lproj/Localizable.stringsdict > Localization-Diff/zh-Hans.stringsdict.diff
git diff $old_tag $new_tag -- Tune/Resources/Strings/zh-Hant.lproj/Localizable.stringsdict > Localization-Diff/zh-Hant.stringsdict.diff
echo "Done! Check 'Localization-Diff/'"
