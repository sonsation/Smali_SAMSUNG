.class public Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;Landroid/view/View;I)V
    .locals 0
    .param p1, "adapter"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;Landroid/view/View;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->selector:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    .line 37
    return-void
.end method

.method protected initOnLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->selector:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->initOnLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    .line 42
    return-void
.end method
