.class Lcom/android/server/policy/GlobalActions$32$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions$32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$32;

.field final synthetic val$action:Lcom/android/server/policy/GlobalActions$Action;

.field final synthetic val$isPort:Z

.field final synthetic val$tempView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$32;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$32;
    .param p2, "val$action"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p3, "val$tempView"    # Landroid/view/View;
    .param p4, "val$isPort"    # Z

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$32$1;->this$1:Lcom/android/server/policy/GlobalActions$32;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$32$1;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$32$1;->val$tempView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/server/policy/GlobalActions$32$1;->val$isPort:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2277
    const-string/jumbo v0, "TAG"

    const-string/jumbo v1, "mLongPressed called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$32$1;->this$1:Lcom/android/server/policy/GlobalActions$32;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$32;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-set8(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 2279
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$32$1;->this$1:Lcom/android/server/policy/GlobalActions$32;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$32;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$32$1;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$32$1;->val$tempView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions$32$1;->val$isPort:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions;->-wrap28(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    .line 2276
    return-void
.end method
