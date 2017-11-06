.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/ILibraryListSelector;
.super Ljava/lang/Object;
.source "ILibraryListSelector.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/IActivityBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/ILibraryListSelector$LibraryListSelectorFocusable;,
        Lcom/samsung/android/app/musiclibrary/ui/ILibraryListSelector$OnLibraryListSelectedListener;
    }
.end annotation


# virtual methods
.method public abstract getActivityLayoutResId()I
.end method

.method public abstract getSelectedListKeyword()Ljava/lang/String;
.end method

.method public abstract getSelectedListTitle()Ljava/lang/String;
.end method

.method public abstract getSelectedListType()I
.end method

.method public abstract init(ILjava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract resetLibraryList()V
.end method

.method public abstract resetLibraryList(I)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setFocusable(Z)V
.end method

.method public abstract setOnLibraryListSelectedListener(Lcom/samsung/android/app/musiclibrary/ui/ILibraryListSelector$OnLibraryListSelectedListener;)V
.end method

.method public abstract setSelectedListInfo(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract show()V
.end method
