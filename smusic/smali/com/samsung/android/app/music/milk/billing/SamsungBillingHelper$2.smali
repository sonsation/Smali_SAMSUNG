.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$2;
.super Ljava/lang/Object;
.source "SamsungBillingHelper.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->buyTrack(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

.field final synthetic val$payYn:Z

.field final synthetic val$promotionId:Ljava/lang/String;

.field final synthetic val$trackList:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$2;->val$trackList:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$2;->val$promotionId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$2;->val$payYn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingAppAvailable()V
    .locals 5

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->access$200(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$2;->val$trackList:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$2;->val$promotionId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$2;->val$payYn:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPaymentDataTrack(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 248
    return-void
.end method

.method public onBillingAppUnavailable(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 252
    return-void
.end method
