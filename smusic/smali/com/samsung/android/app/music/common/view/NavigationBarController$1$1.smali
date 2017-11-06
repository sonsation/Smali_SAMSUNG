.class Lcom/samsung/android/app/music/common/view/NavigationBarController$1$1;
.super Ljava/lang/Object;
.source "NavigationBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/view/NavigationBarController$1;->onChangedSettings(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/view/NavigationBarController$1;

.field final synthetic val$pinEnabled:Z

.field final synthetic val$settingEnabled:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/view/NavigationBarController$1;ZZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/view/NavigationBarController$1;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1$1;->this$1:Lcom/samsung/android/app/music/common/view/NavigationBarController$1;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1$1;->val$settingEnabled:Z

    iput-boolean p3, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1$1;->val$pinEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1$1;->this$1:Lcom/samsung/android/app/music/common/view/NavigationBarController$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1;->this$0:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/view/NavigationBarController;->access$100(Lcom/samsung/android/app/music/common/view/NavigationBarController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1$1;->this$1:Lcom/samsung/android/app/music/common/view/NavigationBarController$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1;->this$0:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/view/NavigationBarController;->access$000(Lcom/samsung/android/app/music/common/view/NavigationBarController;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1$1;->val$settingEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1$1;->val$pinEnabled:Z

    if-nez v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1$1;->this$1:Lcom/samsung/android/app/music/common/view/NavigationBarController$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1;->this$0:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/view/NavigationBarController;->access$100(Lcom/samsung/android/app/music/common/view/NavigationBarController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1$1;->this$1:Lcom/samsung/android/app/music/common/view/NavigationBarController$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1;->this$0:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1$1;->this$1:Lcom/samsung/android/app/music/common/view/NavigationBarController$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/view/NavigationBarController$1;->this$0:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/view/NavigationBarController;->access$000(Lcom/samsung/android/app/music/common/view/NavigationBarController;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController$1$1;->this$1:Lcom/samsung/android/app/music/common/view/NavigationBarController$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/common/view/NavigationBarController$1;->this$0:Lcom/samsung/android/app/music/common/view/NavigationBarController;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/view/NavigationBarController;->access$100(Lcom/samsung/android/app/music/common/view/NavigationBarController;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/view/NavigationBarController;->access$200(Lcom/samsung/android/app/music/common/view/NavigationBarController;Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0
.end method
