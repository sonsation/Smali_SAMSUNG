.class Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1$1;
.super Ljava/lang/Object;
.source "NoNetworkLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$302(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$000(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$100(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$200(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0364

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 234
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$000(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$100(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$200(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
