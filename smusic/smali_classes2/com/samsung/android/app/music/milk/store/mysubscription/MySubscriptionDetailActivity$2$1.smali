.class Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2$1;
.super Ljava/lang/Object;
.source "MySubscriptionDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;->onButtonItemClick(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2$1;->this$1:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2$1;->val$productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 136
    const-string v1, "MySubscriptionDetailActivity"

    const-string v2, "continue subscription"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2$1;->this$1:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 139
    .local v0, "milkService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2$1;->this$1:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2$1;->this$1:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    .line 140
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2$1;->val$productId:Ljava/lang/String;

    const-string v4, "04"

    .line 139
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->updateSubscription(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method
