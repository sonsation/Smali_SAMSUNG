.class Lcom/android/launcher3/allapps/view/AppsSearchContainerView$1;
.super Ljava/lang/Object;
.source "AppsSearchContainerView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/view/AppsSearchContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 304
    if-eqz p2, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView$1;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->access$000(Lcom/android/launcher3/allapps/view/AppsSearchContainerView;)Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->requestFocus()Z

    .line 307
    :cond_0
    return-void
.end method
