.class Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$1;
.super Ljava/lang/Object;
.source "SeslToolbar.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mOnMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mOnMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$OnMenuItemClickListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
