.class Lcom/android/launcher3/allapps/view/AppsSearchContainerView$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "AppsSearchContainerView.java"


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
    .line 329
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView$2;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v0, 0x1

    .line 332
    if-ne p2, v0, :cond_0

    .line 333
    invoke-static {p1, v0}, Lcom/android/launcher3/util/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    .line 335
    :cond_0
    return-void
.end method
