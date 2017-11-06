.class public Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "DlnaDmsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 240
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;
    .locals 0

    .prologue
    .line 244
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;->self()Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
