.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MasterClearReceiver$FlymeRebootThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const-string v1, "google.com"

    const-string v2, "from"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    const-string v1, "MasterClear"

    const-string v2, "Ignoring master clear request -- not from trusted server."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/MasterClearReceiver;->flymeRebootWipeUserData(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_flyme_0

    return-void

    :cond_flyme_0

    const-string v1, "shutdown"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 42
    .local v5, "shutdown":Z
    const-string v1, "android.intent.extra.REASON"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, "reason":Ljava/lang/String;
    const-string v1, "delete_built_in_memory_card"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 46
    .local v3, "delete_built_in_memory_card":Z
    const-string v1, "MasterClear"

    const-string v2, "!!! FACTORY RESET !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Lcom/android/server/MasterClearReceiver$1;

    const-string v2, "Reboot"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;ZLandroid/content/Context;ZLjava/lang/String;)V

    .line 71
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private flymeRebootWipeUserData(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    new-instance v0, Lcom/android/server/MasterClearReceiver$FlymeRebootThread;

    invoke-direct {v0, p1, p2}, Lcom/android/server/MasterClearReceiver$FlymeRebootThread;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .local v0, "flymeRebootThread":Lcom/android/server/MasterClearReceiver$FlymeRebootThread;
    invoke-virtual {v0}, Lcom/android/server/MasterClearReceiver$FlymeRebootThread;->start()V

    const/4 v1, 0x1

    return v1
.end method