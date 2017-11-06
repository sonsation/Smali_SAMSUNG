.class Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$7;
.super Ljava/lang/Object;
.source "SeslSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1040
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->onSearchClicked()V

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mCloseButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 1046
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->onCloseClicked()V

    goto :goto_0

    .line 1047
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mGoButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 1048
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->onSubmitQuery()V

    goto :goto_0

    .line 1049
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mVoiceButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 1050
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->onVoiceClicked()V

    goto :goto_0

    .line 1051
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    if-ne p1, v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->forceSuggestionQuery()V

    goto :goto_0
.end method
