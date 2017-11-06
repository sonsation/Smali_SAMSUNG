.class public Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;
.super Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;
.source "RedeemVoucherUsable.java"


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Landroid/database/Cursor;J)V
    .locals 1
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "id"    # J

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;-><init>(Landroid/app/Fragment;Landroid/database/Cursor;J)V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->redeemVoucher()V

    return-void
.end method

.method private redeemVoucher()V
    .locals 4

    .prologue
    .line 42
    const-string v1, "VoucherUsable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "redeemVoucher"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->fragment:Landroid/app/Fragment;

    .line 44
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 46
    .local v0, "milkService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    iget-wide v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->id:J

    invoke-virtual {v0, p0, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->redeemVoucher(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;J)I

    .line 47
    return-void
.end method


# virtual methods
.method protected handlingVoucherError(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 71
    const-string v1, "VoucherUsable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "handlingVoucherError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a039c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "ErrorMsg":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 95
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->fragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 96
    return-void

    .line 77
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0401

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0402

    .line 81
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    goto :goto_0

    .line 84
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    goto :goto_0

    .line 87
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0403

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    goto :goto_0

    .line 91
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0414

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1771
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 51
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 53
    if-nez p3, :cond_1

    .line 54
    const/16 v0, 0x27e6

    if-ne p2, v0, :cond_2

    .line 55
    const-string v0, "VoucherUsable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "REDEEM_VOUCHER success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->fragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->fragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->fragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->fragment:Landroid/app/Fragment;

    const v2, 0x7f0a0278

    .line 58
    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->requestLogin(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Z)I

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->completeUseVoucher()V

    goto :goto_0
.end method

.method protected userVoucherInternal()V
    .locals 5

    .prologue
    .line 26
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->fragment:Landroid/app/Fragment;

    const v2, 0x7f0a0408

    .line 27
    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->expiry_date_local:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "desc":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0409

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0146

    new-instance v3, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable$1;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;)V

    .line 32
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a008a

    .line 37
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->fragment:Landroid/app/Fragment;

    .line 38
    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "RedeemVoucherUsable"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 39
    return-void
.end method
