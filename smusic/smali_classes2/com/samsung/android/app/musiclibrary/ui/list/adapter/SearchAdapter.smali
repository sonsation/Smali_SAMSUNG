.class public Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;,
        Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)V

    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    .line 21
    if-nez p3, :cond_0

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$layout;->default_list_item_global_search:I

    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 25
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$ViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;Landroid/view/View;I)V

    return-object v0
.end method
