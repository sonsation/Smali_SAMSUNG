.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;
.super Ljava/lang/Object;
.source "MultipleItemPickerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;
    }
.end annotation


# virtual methods
.method public abstract getCheckedItemIds()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCheckedItemIdsInArray()[J
.end method

.method public abstract getCheckedItemIdsInArray(I)[J
    .param p1    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param
.end method

.method public abstract getCount()I
.end method

.method public abstract isItemChecked(J)Z
.end method

.method public abstract setItemChecked(JZ)V
.end method

.method public abstract setOnUpdateCheckedItemsListener(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V
.end method

.method public abstract updateCheckedItemIds(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateCheckedItems([J)V
.end method
