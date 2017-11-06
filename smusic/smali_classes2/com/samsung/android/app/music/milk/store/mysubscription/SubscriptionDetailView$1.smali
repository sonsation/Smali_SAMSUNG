.class Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$1;
.super Ljava/lang/Object;
.source "SubscriptionDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->updateSubscription(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$1;->val$productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;)Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 162
    const v1, 0x7f12002f

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;)Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;

    move-result-object v1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$1;->val$productId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;->onButtonItemClick(ILjava/lang/String;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v1, "SubscriptionDetailView"

    const-string v2, "onClick listener is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
