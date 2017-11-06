.class public Lcom/samsung/android/app/music/provider/MilkContents$Account;
.super Ljava/lang/Object;
.source "MilkContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Account"
.end annotation


# static fields
.field private static final ACCOUNT_USER_DATA_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Account;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$Account;->ACCOUNT_USER_DATA_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 265
    const-string v0, "content://com.sec.android.app.music//account/userdata"

    .line 266
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio/playlists"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "milk/purchase/subscriptions/uilist"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "milk/purchase/vouchers/uilist"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "milk/download_basket"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "milk/purchase/download_queue"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "milk/purchase/tracks"

    aput-object v3, v1, v2

    .line 265
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MilkContents;->access$000(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
