.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;
.super Ljava/lang/Object;
.source "CycledLinkedList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;
    }
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
        ">;"
    }
.end annotation


# static fields
.field private static MAX_ITERATOR_NEST_LEVEL:I


# instance fields
.field private volatile mCurInteratorIndex:I

.field private final mEmptyIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<T",
            "ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIterators:[Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator",
            "<T",
            "ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mIteratorsLock:Ljava/lang/Object;

.field private mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item",
            "<T",
            "ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item",
            "<T",
            "ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x20

    sput v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->MAX_ITERATOR_NEST_LEVEL:I

    return-void
.end method

.method public constructor <init>(IILcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;)V
    .locals 5
    .param p1, "size"    # I
    .param p2, "selectedIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory",
            "<T",
            "ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList<TListItem;>;"
    .local p3, "factory":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory<TListItem;>;"
    const/4 v4, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mIteratorsLock:Ljava/lang/Object;

    .line 44
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$1;)V

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mEmptyIterable:Ljava/lang/Iterable;

    .line 59
    if-gtz p1, :cond_0

    .line 60
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Size should be at least 1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->createIterators()V

    .line 63
    invoke-direct {p0, v4, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->createNew(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;)Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    move-result-object v1

    .line 64
    .local v1, "head":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<TListItem;>;"
    move-object v0, v1

    .line 65
    .local v0, "cur":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<TListItem;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 66
    invoke-direct {p0, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->createNew(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;)Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    move-result-object v0

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_1
    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 70
    iput-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 73
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 74
    move-object v0, v1

    .line 76
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_2

    .line 77
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    :cond_2
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 80
    return-void
.end method

.method private createIterators()V
    .locals 4

    .prologue
    .line 153
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList<TListItem;>;"
    sget v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->MAX_ITERATOR_NEST_LEVEL:I

    new-array v1, v1, [Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;

    check-cast v1, [Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mIterators:[Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->MAX_ITERATOR_NEST_LEVEL:I

    if-ge v0, v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mIterators:[Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$1;)V

    aput-object v2, v1, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method private createNew(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;)Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item",
            "<T",
            "ListItem;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory",
            "<T",
            "ListItem;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item",
            "<T",
            "ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList<TListItem;>;"
    .local p1, "cur":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<TListItem;>;"
    .local p2, "factory":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory<TListItem;>;"
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$1;)V

    .line 84
    .local v0, "next":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<TListItem;>;"
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;->obtain()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->item:Ljava/lang/Object;

    .line 85
    if-eqz p1, :cond_0

    .line 86
    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 88
    :cond_0
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 89
    return-object v0
.end method

.method private obtainIterable(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Z)Ljava/lang/Iterable;
    .locals 5
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
            "Ljava/lang/Iterable",
            "<T",
            "ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList<TListItem;>;"
    .local p1, "first":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<TListItem;>;"
    .local p2, "last":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<TListItem;>;"
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mIteratorsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mIterators:[Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mCurInteratorIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mCurInteratorIndex:I

    aget-object v0, v1, v3

    .line 144
    .local v0, "res":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator<TListItem;>;"
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mCurInteratorIndex:I

    sget v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->MAX_ITERATOR_NEST_LEVEL:I

    if-lt v1, v3, :cond_0

    .line 145
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mCurInteratorIndex:I

    .line 147
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->reset(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Z)Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;

    move-result-object v1

    return-object v1

    .line 147
    .end local v0    # "res":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator<TListItem;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListItem;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList<TListItem;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListItem;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList<TListItem;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getSelected()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListItem;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList<TListItem;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
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
    .line 116
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList<TListItem;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->obtainIterable(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Z)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toLeft()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<T",
            "ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList<TListItem;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    if-ne v0, v2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mEmptyIterable:Ljava/lang/Iterable;

    monitor-exit v1

    .line 126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->obtainIterable(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Z)Ljava/lang/Iterable;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toRight()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<T",
            "ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList<TListItem;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    if-ne v0, v2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mEmptyIterable:Ljava/lang/Iterable;

    monitor-exit v1

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->obtainIterable(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Z)Ljava/lang/Iterable;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSelection(Z)V
    .locals 2
    .param p1, "next"    # Z

    .prologue
    .line 101
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList<TListItem;>;"
    if-eqz p1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 105
    monitor-exit v1

    .line 112
    :goto_0
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 110
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
