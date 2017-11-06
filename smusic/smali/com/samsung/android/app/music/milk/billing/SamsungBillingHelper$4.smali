.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;
.super Ljava/lang/Object;
.source "SamsungBillingHelper.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/activity/PackageEnableChecker$PackageEnableStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->verifyBillingApp(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
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
    .line 297
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;->val$l:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 301
    const-string v0, "SamsungBilling"

    const-string v1, "billing app is now enabled!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;->val$l:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;->onBillingAppAvailable()V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;->val$l:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;->onBillingAppUnavailable(I)V

    goto :goto_0
.end method
