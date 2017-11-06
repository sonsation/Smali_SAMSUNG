.class public abstract Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;
.super Ljava/lang/Object;
.source "VoucherUsable.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected final applicationContext:Landroid/content/Context;

.field protected final context:Landroid/content/Context;

.field protected final expiry_date_local:Ljava/lang/String;

.field protected final fragment:Landroid/app/Fragment;

.field protected final id:J

.field protected final readState:I

.field protected final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Landroid/database/Cursor;J)V
    .locals 1
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "id"    # J

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "VoucherUsable"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->LOG_TAG:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->context:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->applicationContext:Landroid/content/Context;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->fragment:Landroid/app/Fragment;

    .line 56
    const-string/jumbo v0, "voucherTitle"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->title:Ljava/lang/String;

    .line 57
    const-string v0, "read"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->readState:I

    .line 58
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->getLocalExpiryDate(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->expiry_date_local:Ljava/lang/String;

    .line 59
    iput-wide p3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->id:J

    .line 60
    return-void
.end method

.method private getLocalExpiryDate(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x5

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 114
    .local v0, "c":Ljava/util/Calendar;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy.MM.dd"

    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 115
    .local v2, "df":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 117
    const-string v5, "periodValue"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 118
    .local v4, "periodValue":I
    const-string v5, "periodType"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "periodType":Ljava/lang/String;
    const-string v5, "M"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 129
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "date":Ljava/lang/String;
    const-string v5, "VoucherUsable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLocalExpiryDate voucher valid date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-object v1

    .line 122
    .end local v1    # "date":Ljava/lang/String;
    :cond_0
    const-string v5, "D"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 125
    :cond_1
    const-string v5, "VoucherUsable"

    const-string v6, "clickVoucher voucher dont\' have period type"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/16 v5, 0x1e

    invoke-virtual {v0, v7, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method public static useVouher(Landroid/app/Fragment;Landroid/database/Cursor;J)V
    .locals 4
    .param p0, "f"    # Landroid/app/Fragment;
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "id"    # J

    .prologue
    .line 42
    const-string/jumbo v2, "voucherType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "voucherType":Ljava/lang/String;
    const-string v2, "02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;-><init>(Landroid/app/Fragment;Landroid/database/Cursor;J)V

    .line 48
    .local v0, "handler":Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->useVoucherProcess()V

    .line 49
    return-void

    .line 46
    .end local v0    # "handler":Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;-><init>(Landroid/app/Fragment;Landroid/database/Cursor;J)V

    .restart local v0    # "handler":Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;
    goto :goto_0
.end method


# virtual methods
.method protected completeUseVoucher()V
    .locals 3

    .prologue
    .line 80
    const-string v0, "VoucherUsable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "completeUseVoucher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->fragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->SUBSCRIPTION_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 83
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->launchMySubscriptionActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected abstract handlingVoucherError(I)V
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 91
    const-string v0, "VoucherUsable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onApiCalled reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 97
    const-string v1, "VoucherUsable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onApiHandled reqId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reqType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rspType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz p3, :cond_1

    .line 102
    const/4 v0, -0x1

    .line 103
    .local v0, "errCode":I
    aget-object v1, p5, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->fragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    aget-object v1, p5, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->handlingVoucherError(I)V

    .line 107
    :cond_0
    const-string v1, "VoucherUsable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail error code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v0    # "errCode":I
    :cond_1
    return-void
.end method

.method protected useVoucherProcess()V
    .locals 6

    .prologue
    .line 63
    const-string v2, "VoucherUsable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "useVouher"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->readState:I

    if-eqz v2, :cond_0

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "selection":Ljava/lang/String;
    const-string v2, "VoucherUsable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "useVouher read selection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v1, "updateValues":Landroid/content/ContentValues;
    const-string v2, "read"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->context:Landroid/content/Context;

    .line 72
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Vouchers;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    .line 71
    invoke-static {v2, v3, v1, v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 76
    .end local v0    # "selection":Ljava/lang/String;
    .end local v1    # "updateValues":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->userVoucherInternal()V

    .line 77
    return-void
.end method

.method protected abstract userVoucherInternal()V
.end method
