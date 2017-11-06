.class public abstract Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;
.super Ljava/lang/Object;
.source "AbstractObservers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mObserver:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;, "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;->mObserver:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;, "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;->mObserver:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;, "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;->mObserver:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 20
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;, "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;->mObserver:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method
