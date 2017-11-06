.class public Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;
.super Ljava/lang/Object;
.source "PlayAllButtonViewManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# instance fields
.field private final mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

.field private final mPlayAll:Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;)V
    .locals 2
    .param p1, "playAll"    # Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;
    .param p2, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->mPlayAll:Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;

    .line 22
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    .line 23
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->clickView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method

.method private updatePlayButtonContentDescription(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 45
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->playButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_button:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    if-nez p1, :cond_0

    .line 50
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->tts_dimmed:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->playButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method


# virtual methods
.method public setViewEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->clickView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->updatePlayButtonContentDescription(Z)V

    .line 37
    return-void
.end method

.method public showButtonBackground(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->play_all_text_show_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "shuffleShowButton":Landroid/view/View;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->play_all_text_show_button_stub:I

    .line 59
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->play_all_text_show_button_stub:I

    .line 61
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 62
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 64
    :cond_0
    if-eqz v0, :cond_1

    .line 65
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_1
    return-void

    .line 65
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public updatePlayButtonTextView(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->mPlayAll:Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;->updatePlayButtonView(Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;I)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->updatePlayButtonContentDescription(Z)V

    .line 42
    return-void
.end method
