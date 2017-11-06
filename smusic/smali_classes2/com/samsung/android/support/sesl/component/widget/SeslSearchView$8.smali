.class Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$8;
.super Ljava/lang/Object;
.source "SeslSearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 1062
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$8;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1066
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$8;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v2, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return v0

    .line 1077
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$8;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$8;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    .line 1078
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getListSelection()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1079
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$8;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1084
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$8;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1085
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1086
    const/16 v2, 0x42

    if-ne p2, v2, :cond_0

    .line 1087
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 1090
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$8;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$8;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mSearchSrcTextView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1091
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1090
    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1092
    goto :goto_0
.end method
