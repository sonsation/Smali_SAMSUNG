.class Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable$2;
.super Ljava/lang/Object;
.source "BillingVoucherUsable.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onFail(ILjava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 84
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, "VoucherUsable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "launchBilling by voucher onSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->completeUseVoucher()V

    .line 79
    return-void
.end method
