.class public Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;
.super Ljava/lang/Object;
.source "MilkContents.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PurchasedTracks"
.end annotation


# static fields
.field public static final URI_PATH:Ljava/lang/String; = "milk/purchase/tracks"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 230
    const-string v0, "content://com.sec.android.app.music/milk/purchase/tracks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
