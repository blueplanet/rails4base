## アプリケーションの名前変更

```
git grep -l 'module RailsFormBuilder' | xargs sed -i '' 's/RailsFormBuilder/Yourappname/g'
git grep -l 'railsformbuilder' | xargs sed -i '' 's/railsformbuilder/yourappname/g'
```
