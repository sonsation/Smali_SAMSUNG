.class Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$3;
.super Ljava/lang/Object;
.source "SeslToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureCollapseButtonView()V
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
    .line 1412
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->collapseActionView()V

    .line 1416
    return-void
.end method
