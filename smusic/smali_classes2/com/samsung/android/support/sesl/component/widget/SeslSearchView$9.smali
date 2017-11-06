.class Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$9;
.super Ljava/lang/Object;
.source "SeslSearchView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$9;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$9;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->onSubmitQuery()V

    .line 1235
    const/4 v0, 0x1

    return v0
.end method
