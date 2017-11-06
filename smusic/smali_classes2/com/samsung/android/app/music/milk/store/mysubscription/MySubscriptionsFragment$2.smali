.class Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$2;
.super Ljava/lang/Object;
.source "MySubscriptionsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeatureChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 187
    const-string v0, "MySubscriptionsFragment"

    const-string v1, "onFeatureChanged in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->updateHeader()V

    goto :goto_0
.end method
