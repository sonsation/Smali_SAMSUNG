.class public Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "VoucherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 207
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$Builder;->build()Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$Builder;
    .locals 0

    .prologue
    .line 211
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$Builder;->self()Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
