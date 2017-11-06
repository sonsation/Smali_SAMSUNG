.class Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView$1;
.super Ljava/lang/Object;
.source "SeslActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->initForMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

.field final synthetic val$mode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView$1;->val$mode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView$1;->val$mode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->finish()V

    .line 191
    return-void
.end method
