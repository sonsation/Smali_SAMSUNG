.class Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;
.super Ljava/lang/Object;
.source "NfcListenStatusChange.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcListenStatusChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x2

    const v6, 0x7f0f00cc

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 302
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    return v4

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get6(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get4(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setNfcTypeSettings(I)Z

    move-result v1

    .line 309
    .local v1, "setret":Z
    if-eqz v1, :cond_1

    .line 310
    const-string/jumbo v2, "00001,0"

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifuConfigAccess;->setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z

    move-result v0

    .line 311
    .local v0, "ret":Z
    if-eqz v0, :cond_1

    .line 312
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    const-string/jumbo v3, "00001,0"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-set1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .end local v0    # "ret":Z
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 344
    .end local v1    # "setret":Z
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-wrap2(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V

    .line 347
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->finish()V

    .line 348
    return v5

    .line 316
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get7(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 318
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get4(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setNfcTypeSettings(I)Z

    move-result v1

    .line 319
    .restart local v1    # "setret":Z
    if-eqz v1, :cond_4

    .line 320
    const-string/jumbo v2, "00001,1"

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifuConfigAccess;->setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z

    move-result v0

    .line 321
    .restart local v0    # "ret":Z
    if-eqz v0, :cond_4

    .line 322
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    const-string/jumbo v3, "00001,1"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-set1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .end local v0    # "ret":Z
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    .line 326
    .end local v1    # "setret":Z
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get8(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 327
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get3(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 329
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get4(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setNfcTypeSettings(I)Z

    move-result v1

    .line 330
    .restart local v1    # "setret":Z
    if-eqz v1, :cond_6

    .line 331
    const-string/jumbo v2, "00001,2"

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifuConfigAccess;->setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z

    move-result v0

    .line 332
    .restart local v0    # "ret":Z
    if-eqz v0, :cond_6

    .line 333
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    const-string/jumbo v3, "00001,2"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-set1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .end local v0    # "ret":Z
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 338
    .end local v1    # "setret":Z
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-wrap1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V

    .line 339
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get0(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 340
    return v5
.end method
