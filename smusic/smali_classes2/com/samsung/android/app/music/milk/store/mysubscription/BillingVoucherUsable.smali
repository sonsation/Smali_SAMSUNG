.class public Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;
.super Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;
.source "BillingVoucherUsable.java"


# instance fields
.field private final onBillingStateListener:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

.field private final pricingTypeCode:Ljava/lang/String;

.field private final productId:Ljava/lang/String;

.field private final voucherId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Landroid/database/Cursor;J)V
    .locals 1
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "id"    # J

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;-><init>(Landroid/app/Fragment;Landroid/database/Cursor;J)V

    .line 73
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable$2;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->onBillingStateListener:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    .line 30
    const-string v0, "productId"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->productId:Ljava/lang/String;

    .line 31
    const-string v0, "pricingTypeCode"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->pricingTypeCode:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "voucherId"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->voucherId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->buySubscription()V

    return-void
.end method

.method private buySubscription()V
    .locals 5

    .prologue
    .line 54
    const-string v2, "VoucherUsable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "buySubscription"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->productId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "item":Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->pricingTypeCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->setPricingCode(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->voucherId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->setVoucherId(Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->context:Landroid/content/Context;

    instance-of v2, v2, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    if-eqz v2, :cond_0

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;-><init>(Landroid/app/Activity;)V

    .line 61
    .local v0, "billingHelper":Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->onBillingStateListener:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->buySubscription(Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;)V

    .line 66
    .end local v0    # "billingHelper":Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v2, "VoucherUsable"

    const-string v3, "execute : activity is not instance of BaseMilkServiceActivity"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected handlingVoucherError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 71
    return-void
.end method

.method protected userVoucherInternal()V
    .locals 5

    .prologue
    .line 38
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->fragment:Landroid/app/Fragment;

    const v2, 0x7f0a0407

    .line 39
    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0409

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0146

    new-instance v3, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable$1;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;)V

    .line 44
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a008a

    .line 49
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->fragment:Landroid/app/Fragment;

    .line 50
    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "BillingVoucherUsable"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 51
    return-void
.end method
