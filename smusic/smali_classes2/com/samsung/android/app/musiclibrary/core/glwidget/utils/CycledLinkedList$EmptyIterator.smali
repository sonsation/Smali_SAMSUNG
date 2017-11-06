.class Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;
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
    name = "EmptyIterator"
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 234
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator<TListItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$1;

    .prologue
    .line 234
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator<TListItem;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 238
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator<TListItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
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
    .line 253
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator<TListItem;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListItem;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator<TListItem;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 248
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator<TListItem;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is readonly iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
