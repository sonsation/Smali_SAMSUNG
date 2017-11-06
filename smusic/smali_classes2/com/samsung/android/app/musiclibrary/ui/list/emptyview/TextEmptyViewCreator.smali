.class public Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;
.super Ljava/lang/Object;
.source "TextEmptyViewCreator.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;


# instance fields
.field private final mFragment:Landroid/app/Fragment;

.field private final mStringResId:I

.field private final mWinsetUiEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Fragment;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "stringResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;-><init>(Landroid/app/Fragment;IZ)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;IZ)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "stringResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "winsetUiEnabled"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    .line 28
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;->mStringResId:I

    .line 29
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;->mWinsetUiEnabled:Z

    .line 30
    return-void
.end method


# virtual methods
.method public createEmptyView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 34
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/musiclibrary/R$layout;->default_empty_view:I

    const/4 v4, 0x0

    .line 35
    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "emptyView":Landroid/view/View;
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->no_item_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 37
    .local v1, "textView":Landroid/widget/TextView;
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;->mStringResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 38
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;->mWinsetUiEnabled:Z

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    .line 40
    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/musiclibrary/R$color;->no_item_text_mmapp:I

    invoke-static {v2, v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    :cond_0
    return-object v0
.end method
