#!/bin/sh
mkdir -p Localization-Diff
printf "old tag: "
read old_tag
printf "new tag: "
read new_tag

locales=('en' 'id' 'ja' 'th' 'zh-Hant')
lowercase_locales=('ko' 'zh-Hans')

for locale in "${locales[@]}"
do
   git diff $old_tag $new_tag --color -- "Tune/Resources/Strings/$locale.lproj/Localizable.strings" | ansi-to-html -n > "Localization-Diff/$locale.strings.html"
   git diff $old_tag $new_tag --color -- "Tune/Resources/Strings/$locale.lproj/Localizable.stringsdict" | ansi-to-html -n > "Localization-Diff/$locale.stringsdict.html"
done

for locale in "${lowercase_locales[@]}"
do
   git diff $old_tag $new_tag --color -- "Tune/Resources/Strings/$locale.lproj/localizable.strings" | ansi-to-html -n > "Localization-Diff/$locale.strings.html"
   git diff $old_tag $new_tag --color -- "Tune/Resources/Strings/$locale.lproj/Localizable.stringsdict" | ansi-to-html -n > "Localization-Diff/$locale.stringsdict.html"
done

echo "Done! Check 'Localization-Diff/'"
