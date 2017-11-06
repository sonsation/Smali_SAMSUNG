.class final Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$3;
.super Ljava/lang/Object;
.source "SyncPlaylist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->delete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)V
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


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$3;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$3;->val$selection:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$3;->val$selectionArgs:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$3;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$3;->val$selection:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$3;->val$selectionArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->access$200(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    .line 169
    return-void
.end method
