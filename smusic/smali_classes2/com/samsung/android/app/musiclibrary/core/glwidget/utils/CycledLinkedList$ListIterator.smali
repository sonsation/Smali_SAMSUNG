.class Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;
.super Ljava/lang/Object;
.source "CycledLinkedList.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListItem:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<T",
        "ListItem;",
        ">;",
        "Ljava/util/Iterator",
        "<T",
        "ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mAtFirst:Z

.field private mCur:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item",
            "<T",
            "ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFirst:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item",
            "<T",
            "ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLast:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item",
            "<T",
            "ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNext:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 171
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator<TListItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$1;

    .prologue
    .line 171
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator<TListItem;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 202
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator<TListItem;>;"
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mAtFirst:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mCur:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mLast:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<T",
            "ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator<TListItem;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mFirst:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mLast:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mNext:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->reset(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Z)Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;

    .line 230
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListItem;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator<TListItem;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mCur:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->item:Ljava/lang/Object;

    .line 208
    .local v0, "res":Ljava/lang/Object;, "TListItem;"
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mAtFirst:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mNext:Z

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mCur:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mCur:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 217
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mAtFirst:Z

    .line 218
    return-object v0

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mCur:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mCur:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    goto :goto_0

    .line 215
    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 223
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator<TListItem;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is readonly iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Z)Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;
    .locals 1
    .param p3, "next"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item",
            "<T",
            "ListItem;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item",
            "<T",
            "ListItem;",
            ">;Z)",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator",
            "<T",
            "ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator<TListItem;>;"
    .local p1, "first":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<TListItem;>;"
    .local p2, "last":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<TListItem;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mFirst:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 193
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mLast:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 194
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mNext:Z

    .line 195
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mCur:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->mAtFirst:Z

    .line 197
    return-object p0
.end method
