.class public Lcom/samsung/android/app/music/provider/MilkContents$Vouchers;
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
    name = "Vouchers"
.end annotation


# static fields
.field public static final URI_PATH:Ljava/lang/String; = "milk/purchase/vouchers"

.field public static final URI_PATH_UI_LIST:Ljava/lang/String; = "milk/purchase/vouchers/uilist"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 246
    const-string v0, "content://com.sec.android.app.music/milk/purchase/vouchers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "milk/purchase/vouchers/uilist"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MilkContents;->access$000(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUriForUiList()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 251
    const-string v0, "content://com.sec.android.app.music/milk/purchase/vouchers/uilist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
