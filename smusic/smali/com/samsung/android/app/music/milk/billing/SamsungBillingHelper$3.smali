.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;
.super Ljava/lang/Object;
.source "SamsungBillingHelper.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->checkBillingAppUpdate(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

.field final synthetic val$l:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->val$l:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(II)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "deployedVersionCode"    # I

    .prologue
    .line 271
    if-eqz p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->val$l:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->access$300(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;->val$l:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->access$400(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    goto :goto_0
.end method
