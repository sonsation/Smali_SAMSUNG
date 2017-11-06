.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnbindServiceHelper;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SamsungBillingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnbindServiceHelper"
.end annotation


# instance fields
.field private mBillingHelper:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 836
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnbindServiceHelper;->mBillingHelper:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .line 837
    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 841
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 842
    const-string v0, "SamsungBilling"

    const-string v1, "billing host activity is destroyed. release billing service."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnbindServiceHelper;->mBillingHelper:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->release()V

    .line 844
    return-void
.end method
