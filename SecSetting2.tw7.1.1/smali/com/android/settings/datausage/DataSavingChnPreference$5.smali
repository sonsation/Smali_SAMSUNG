.class Lcom/android/settings/datausage/DataSavingChnPreference$5;
.super Ljava/lang/Object;
.source "DataSavingChnPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataSavingChnPreference;->showDataCompressionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

.field final synthetic val$checkboxView:Landroid/widget/CheckBox;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSavingChnPreference;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataSavingChnPreference;
    .param p2, "val$checkboxView"    # Landroid/widget/CheckBox;
    .param p3, "val$edit"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$5;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    iput-object p2, p0, Lcom/android/settings/datausage/DataSavingChnPreference$5;->val$checkboxView:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/settings/datausage/DataSavingChnPreference$5;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 374
    iget-object v2, p0, Lcom/android/settings/datausage/DataSavingChnPreference$5;->val$checkboxView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/android/settings/datausage/DataSavingChnPreference$5;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "datacompression_show_dialog"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 376
    iget-object v2, p0, Lcom/android/settings/datausage/DataSavingChnPreference$5;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 378
    :cond_0
    const-string/jumbo v2, "DataSavingChnPreference"

    const-string/jumbo v3, "showDataCompressionDialog click ok"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataSavingChnPreference$5;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataSavingChnPreference$5;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 381
    iget-object v4, p0, Lcom/android/settings/datausage/DataSavingChnPreference$5;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v4}, Lcom/android/settings/datausage/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0095

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/datausage/DataSavingChnPreference$5;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-boolean v5, v5, Lcom/android/settings/datausage/DataSavingChnPreference;->mChecked:Z

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    :cond_1
    int-to-long v6, v1

    .line 380
    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/settings/Utils;->insertEventwithValueLog(Landroid/content/Context;IIJ)V

    .line 382
    iget-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$5;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-object v1, v1, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v1}, Lcom/samsung/android/datasaving/IDataSavingService;->startSaving()V

    .line 383
    iget-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$5;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v1}, Lcom/android/settings/datausage/DataSavingChnPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "opera_max_china_state"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
