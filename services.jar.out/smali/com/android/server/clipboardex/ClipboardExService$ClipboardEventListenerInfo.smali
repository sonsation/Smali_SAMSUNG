.class Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;
.super Ljava/lang/Object;
.source "ClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipboardEventListenerInfo"
.end annotation


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p2, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;->mUid:I

    .line 131
    iput-object p3, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    .line 129
    return-void
.end method
