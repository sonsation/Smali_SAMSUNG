.class Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;
.super Ljava/lang/Object;
.source "DataWarningLimitActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 234
    if-eqz p2, :cond_0

    .line 235
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "data_warning_whitelist_enable_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v9}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get6(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 236
    .local v0, "enableWarningStatus":I
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-wrap0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    .end local v0    # "enableWarningStatus":I
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get8(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/widget/TextView;

    move-result-object v8

    if-eqz p2, :cond_2

    const v5, 0x7f0b1d08

    :goto_0
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "data_warning_whitelist_enable_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v9}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get6(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 266
    if-eqz p2, :cond_3

    move v5, v6

    .line 265
    :goto_1
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

    move-result-object v5

    if-nez v5, :cond_4

    .line 268
    return-void

    .line 237
    .restart local v0    # "enableWarningStatus":I
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b0ee4

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 237
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 239
    new-instance v6, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1$1;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;)V

    const v8, 0x7f0b1b07

    .line 237
    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 252
    new-instance v6, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1$2;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;)V

    const v8, 0x1040009

    .line 237
    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 260
    .local v2, "mAdbDialog":Landroid/app/AlertDialog;
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get7(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/widget/Switch;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 261
    return-void

    .line 264
    .end local v0    # "enableWarningStatus":I
    .end local v2    # "mAdbDialog":Landroid/app/AlertDialog;
    :cond_2
    const v5, 0x7f0b1d09

    goto :goto_0

    :cond_3
    move v5, v7

    .line 266
    goto :goto_1

    .line 270
    :cond_4
    new-instance v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 271
    .local v4, "utils":Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;
    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->checkStatus(Z)V

    .line 272
    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->isCurrentSlotWarning(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    .line 273
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->setListViewEnabled(Z)V

    .line 274
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->notifyDataSetChanged()V

    .line 275
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0f04d4

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 276
    .local v3, "screenId":I
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0f04d8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 277
    .local v1, "eventId":I
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v5

    if-eqz p2, :cond_5

    :goto_2
    invoke-static {v5, v3, v1, v6}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    .line 233
    return-void

    :cond_5
    move v6, v7

    .line 277
    goto :goto_2
.end method
