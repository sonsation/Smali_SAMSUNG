.class Lcom/android/launcher3/widget/view/WidgetPagedView$1;
.super Ljava/lang/Object;
.source "WidgetPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/view/WidgetPagedView;->onConfigurationChangedIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/view/WidgetPagedView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/view/WidgetPagedView;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$1;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView$1;->this$0:Lcom/android/launcher3/widget/view/WidgetPagedView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->access$002(Lcom/android/launcher3/widget/view/WidgetPagedView;Z)Z

    .line 546
    return-void
.end method
