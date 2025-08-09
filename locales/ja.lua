local Translations = {
    success = {
        withdraw = '引き出しに成功しました',
        deposit = '預け入れに成功しました',
        transfer = '送金に成功しました',
        account = 'アカウントを作成しました',
        rename = 'アカウント名を変更しました',
        delete = 'アカウントを削除しました',
        userAdd = 'ユーザーを追加しました',
        userRemove = 'ユーザーを削除しました',
        card = 'カードを作成しました',
        give = '$%s の現金を渡しました',
        receive = '$%s の現金を受け取りました',
    },
    error = {
        error = 'エラーが発生しました',
        access = '認証されていません',
        account = 'アカウントが見つかりません',
        accounts = '最大アカウント数に達しました',
        user = 'ユーザーは既に追加されています',
        noUser = 'ユーザーが見つかりません',
        money = 'お金が足りません',
        pin = '無効なPINです',
        card = '銀行カードが見つかりません',
        amount = '無効な金額です',
        toofar = '遠すぎます',
    },
    progress = {
        atm = 'ATMにアクセス中',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
