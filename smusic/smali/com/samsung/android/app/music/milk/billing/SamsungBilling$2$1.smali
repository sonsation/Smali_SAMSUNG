.class Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2$1;
.super Ljava/lang/Object;
.source "SamsungBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->onDownloadSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2$1;->this$1:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2$1;->this$1:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2$1;->this$1:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$300(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2$1;->this$1:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$400(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2$1;->this$1:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$500(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$600(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;Landroid/app/Activity;Lcom/samsung/android/app/music/common/model/UserInfo;)Z

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2$1;->this$1:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$200(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->dismiss()V

    .line 317
    return-void
.end method
