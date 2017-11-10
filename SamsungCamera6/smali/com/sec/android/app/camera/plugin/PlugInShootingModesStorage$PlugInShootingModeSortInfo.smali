.class Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;
.super Ljava/lang/Object;
.source "PlugInShootingModesStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlugInShootingModeSortInfo"
.end annotation


# instance fields
.field public commandId:I

.field public id:I

.field public name:Ljava/lang/String;

.field public order:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->id:I

    iput p2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->order:I

    iput p3, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->commandId:I

    iput-object p4, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingModeSortInfo;->name:Ljava/lang/String;

    return-void
.end method
