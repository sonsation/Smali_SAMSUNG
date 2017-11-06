.class public Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "PickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-object v0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->self()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method
