.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;
.super Ljava/lang/Object;
.source "CheckableList.java"


# virtual methods
.method public abstract getCheckedItemCount()I
.end method

.method public abstract getCheckedItemIds(I)[J
    .param p1    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param
.end method

.method public abstract getCheckedItemIdsAsync(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V
    .param p1    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param
.end method

.method public abstract getValidItemCount()I
.end method
