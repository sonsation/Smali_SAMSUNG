.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/ILibraryListSelector$OnLibraryListSelectedListener;
.super Ljava/lang/Object;
.source "ILibraryListSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/ILibraryListSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLibraryListSelectedListener"
.end annotation


# virtual methods
.method public abstract onLibraryListCreated(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Fragment;
.end method

.method public abstract onLibraryListReset(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onLibraryListSelected(Landroid/app/Fragment;)V
.end method
