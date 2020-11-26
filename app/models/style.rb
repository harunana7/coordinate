class Style < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'カジュアル' },
    { id: 2, name: 'コンサバティブ' },
    { id: 3, name: 'ボーイッシュ' },
    { id: 4, name: 'ガーリー' },
  ]
end
