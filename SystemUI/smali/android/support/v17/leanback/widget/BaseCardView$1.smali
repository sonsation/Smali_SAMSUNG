.class Landroid/support/v17/leanback/widget/BaseCardView$1;
.super Ljava/lang/Object;
.source "BaseCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/BaseCardView;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/BaseCardView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/BaseCardView;

    .prologue
    .line 136
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$1;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$1;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->-wrap0(Landroid/support/v17/leanback/widget/BaseCardView;Z)V

    .line 138
    return-void
.end method
