.class final Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$1;
.super Ljava/lang/Object;
.source "SyncPlaylist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$selectionArgs:[Ljava/lang/String;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$1;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$1;->val$selection:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$1;->val$selectionArgs:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$1;->val$values:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$1;->val$selection:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$1;->val$selectionArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->access$000(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    return-void
.end method
