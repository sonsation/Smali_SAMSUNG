.class Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$1;
.super Ljava/lang/Object;
.source "SeslToolbarActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->populateOptionsMenu()V

    .line 61
    return-void
.end method
