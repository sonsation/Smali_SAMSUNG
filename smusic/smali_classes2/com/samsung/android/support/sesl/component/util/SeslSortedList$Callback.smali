.class public abstract Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;
.super Ljava/lang/Object;
.source "SeslSortedList.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/util/SeslListUpdateCallback;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/util/SeslSortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/sesl/component/util/SeslListUpdateCallback;",
        "Ljava/util/Comparator",
        "<TT2;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 684
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;, "Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback<TT2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation
.end method

.method public abstract areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation
.end method

.method public abstract onChanged(II)V
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 710
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;, "Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback<TT2;>;"
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;->onChanged(II)V

    .line 711
    return-void
.end method
